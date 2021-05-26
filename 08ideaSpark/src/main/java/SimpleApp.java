/*** SimpleApp.java ***/
import org.apache.spark.api.java.*;
import org.apache.spark.api.java.function.Function;
import org.apache.spark.SparkConf;
 
public class SimpleApp {
    public static void main(String[] args) {
        String logFile = "17test/TestArticle3.txt"; // Should be some file on your system
        SparkConf conf=new SparkConf().setMaster("local").setAppName("SimpleApp");
        JavaSparkContext sc=new JavaSparkContext(conf);
        JavaRDD<String> logData = sc.textFile(logFile).cache(); 
        long numAs = logData.filter(new Function<String, Boolean>() {
            public Boolean call(String s) { return s.contains("a"); }
        }).count(); 
        long numBs = logData.filter(new Function<String, Boolean>() {
            public Boolean call(String s) { return s.contains("b"); }
        }).count(); 
        System.out.println("Lines with a: " + numAs + ", lines with b: " + numBs);
    }
}