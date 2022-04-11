package com.sample;

import org.kie.api.KieServices;
import org.kie.api.runtime.KieContainer;
import org.kie.api.runtime.KieSession;
import com.sample.Pessoa;
import com.sample.Comida;
/**
 * This is a sample class to launch a rule.
 */
public class DroolsTest {

    public static final void main(String[] args) {
        try {
            // load up the knowledge base
	        KieServices ks = KieServices.Factory.get();
    	    KieContainer kContainer = ks.getKieClasspathContainer();
        	KieSession kSession = kContainer.newKieSession("ksession-rules");

            // go !
        	
        	Comida enchido = new Comida("Enchidos", 1000);
        	Comida salada = new Comida("Saladas", 100);
        	
            Pessoa p1 = new Pessoa("Rafael", 25, 'm', "Saladas", 1500);
            Pessoa p2 = new Pessoa("Maria", 15, 'f', "Enchidos", 1500);
            Pessoa p3 = new Pessoa("David", 37, 'm', "Enchidos", 500);
            Pessoa p4 = new Pessoa("Daniela", 12, 'f', "Saladas", 0);
            Pessoa p5 = new Pessoa("Jorge", 45, 'm', "Pizzas", 1200);
            Pessoa p6 = new Pessoa("Salvador", 45, 'm', "Saladas", 200);
            
            
            kSession.insert(enchido);
            kSession.insert(salada);
            kSession.insert(p1);
            kSession.insert(p2);
            kSession.insert(p3);
            kSession.insert(p4);
            kSession.insert(p5);
            kSession.insert(p6);
            
            kSession.fireAllRules();
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

//    public static class Message {
//
//        public static final int HELLO = 0;
//        public static final int GOODBYE = 1;
//
//        private String message;
//
//        private int status;
//
//        public String getMessage() {
//            return this.message;
//        }
//
//        public void setMessage(String message) {
//            this.message = message;
//        }
//
//        public int getStatus() {
//            return this.status;
//        }
//
//        public void setStatus(int status) {
//            this.status = status;
//        }
//
//    }

}
