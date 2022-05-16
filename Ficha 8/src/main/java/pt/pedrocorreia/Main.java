package pt.pedrocorreia;

import org.kie.api.KieServices;
import org.kie.api.runtime.KieContainer;
import org.kie.api.runtime.KieSession;

import java.io.*;

public class Main {
    public static void main(String[] args) {
        try {

            KieServices ks = KieServices.Factory.get();
            KieContainer kContainer = ks.getKieClasspathContainer();
            KieSession kSession = kContainer.newKieSession("ksession-rule");


            File file=new File("C:\\Users\\pedro\\Desktop\\CR2122\\Ficha 8\\src\\main\\java\\pt\\pedrocorreia\\fogo.txt");
            BufferedReader in = null;
            try{
                in = new BufferedReader(new FileReader(file));
                String read = null;
                in.readLine(); // Skip first line
                while((read = in.readLine()) != null){
                    String[] splited = read.split(";");
                    for(int i=0; i<splited.length; i++) {
                        Divisao d = new Divisao(splited[0]);
                        kSession.insert(d);
                        if (splited[1].equals("sim")) {
                            Aspersor a = new Aspersor(d, false);
                            kSession.insert(a);
                        }
                        if (splited[2].equals("sim")) {
                            Fogo f = new Fogo(d);
                            kSession.insert(f);
                        }
                    }
                }
            } catch(IOException e){
                e.printStackTrace();
            } finally {
                try {
                    in.close();
                } catch (Exception e) {
                }
            }
//            Divisao d1 = new Divisao("cozinha");
//            Divisao d2 = new Divisao("escritorio");
//            Divisao d3 = new Divisao("sala");
//            kSession.insert(d1);
//            kSession.insert(d2);
//            kSession.insert(d3);
//
//            Aspersor asp1 = new Aspersor(d1, false);
//            Aspersor asp2 = new Aspersor(d2, false);
//            Aspersor asp3 = new Aspersor(d3, false);
//            kSession.insert(asp1);
//            kSession.insert(asp2);
//            kSession.insert(asp3);
//
//            Fogo f1 = new Fogo(d1);
//            Fogo f2 = new Fogo(d2);
//            Fogo f3 = new Fogo(d3);
//            kSession.insert(f1);
//            kSession.insert(f2);
//            kSession.insert(f3);
//
            kSession.fireAllRules();
        }catch(Throwable t){
            t.printStackTrace();
        }
    }
}