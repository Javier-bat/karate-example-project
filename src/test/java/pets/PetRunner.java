package pets;

import com.intuit.karate.Runner;
import org.junit.Test;

public class PetRunner {

    @Test
       public void testParallel(){
           Runner.path("classpath:pets").tags("~@ignore").parallel(4);
       }


}
