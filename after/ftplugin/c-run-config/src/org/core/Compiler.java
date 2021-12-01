package org.core;

import java.io.FileWriter;
import java.io.IOException;

public abstract class Compiler {

    private final String name;

    public Compiler(String name){
        this.name = name;
    }

    public void writeCompile(FileWriter fw) throws IOException {
        fw.write("#*"+getName() + "\n");
        writeCompileInternal(fw);
    }
    protected abstract void writeCompileInternal(FileWriter fw) throws IOException;


    public void writeRun(FileWriter fw) throws IOException {
        fw.write("#*"+getName()+"\n");
        writeRunInternal(fw);
    }
    protected abstract void writeRunInternal(FileWriter fw) throws IOException;

    public void writeClean(FileWriter fw) throws IOException {
        fw.write("#*"+getName()+"\n");
        writeCleanInternal(fw);
    }
    protected abstract void writeCleanInternal(FileWriter fw) throws IOException;

    public String getName() {
        return name;
    }
}
