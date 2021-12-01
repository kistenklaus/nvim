package org.core;

import java.io.*;

public final class MakefileCompiler extends Compiler{

    public static final String NAME = "Makefile-Builder";

    private final String target;

    public MakefileCompiler(File makefile) throws IOException {
        super(NAME);
        BufferedReader br = new BufferedReader(new FileReader(makefile));

        String line;
        String _target = null;
        while((line=br.readLine())!=null){
            line = line.trim();
            if(line.toUpperCase().startsWith("TARGET")){
                String[] split = line.split("=");
                if(split.length!=2)throw new RuntimeException("Can't parse TARGET line");
                _target = split[1].trim();
            }
        }
        target = _target;
        br.close();

    }

    @Override
    public void writeCompileInternal(FileWriter fw) throws IOException {
        fw.write("make");
    }

    @Override
    public void writeRunInternal(FileWriter fw) throws IOException {
        fw.write("./"+target);
    }

    @Override
    public void writeCleanInternal(FileWriter fw) throws IOException {
        fw.write("make clean");
    }
}
