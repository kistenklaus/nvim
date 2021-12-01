package org.core;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) throws IOException {
        File root = new File(args[0]);
        if(!root.exists())return;

        List<Compiler> compilers = new ArrayList<>();

        File compileFile = new File(root.getAbsolutePath()+"/.vim-compile.sh");
        if(!compileFile.exists()){

            File makefile = new File(root.getAbsolutePath() + "/Makefile");
            if(makefile.exists())compilers.add(new MakefileCompiler(makefile));

            //create configFile
            FileWriter fw = new FileWriter(compileFile);
            for(Compiler compiler : compilers){
                compiler.writeCompile(fw);
            }
            fw.close();
            Runtime.getRuntime().exec("chmod +x " + compileFile.getAbsolutePath());
        }else if(compileFile.exists()){
            parseCompilers(root, compileFile, compilers);
        }

        File runFile = new File(root.getAbsolutePath()+"/.vim-run.sh");
        if(!runFile.exists()){
            FileWriter fw = new FileWriter(runFile);
            for(Compiler compiler : compilers) {
                compiler.writeRun(fw);
            }
            fw.close();
            Runtime.getRuntime().exec("chmod +x " + runFile.getAbsolutePath());
        }

        File cleanFile = new File(root.getAbsolutePath() + "/.vim-clean.sh");
        if(!cleanFile.exists()){
            FileWriter fw = new FileWriter(cleanFile);
            for(Compiler compiler : compilers){
                compiler.writeClean(fw);
            }
            fw.close();
            Runtime.getRuntime().exec("chmod +x " + cleanFile.getAbsolutePath());
        }

    }

    private static void parseCompilers(File root, File compileFile, List<Compiler> compilers) throws IOException {
        BufferedReader br = new BufferedReader(new FileReader(compileFile));
        String line;
        while((line = br.readLine())!=null){
            line = line.trim();
            if(line.startsWith("#*")){
                String compilerName = line.substring(2);
                if(compilerName.equals(MakefileCompiler.NAME)){
                    File makefile = new File(root.getAbsolutePath() + "/Makefile");
                    if(makefile.exists())compilers.add(new MakefileCompiler(makefile));
                }
            }
        }
        br.close();
    }

}