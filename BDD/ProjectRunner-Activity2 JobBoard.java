package testRunner;
import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = "src/test/java/Features",
    glue = {"stepDefinitions"},
    tags = "@activity1_2_JobBoard",
    plugin = {"html: reports/Activity1_2_test-report-html"},
    monochrome = true
)

public class ProjectRunner {
	//empty
}