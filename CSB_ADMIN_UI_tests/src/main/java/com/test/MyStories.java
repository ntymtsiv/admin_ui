package com.test;

import java.util.List;

import com.gargoylesoftware.htmlunit.SilentCssErrorHandler;
import com.gargoylesoftware.htmlunit.WebClient;
import com.google.common.util.concurrent.MoreExecutors;
import com.thoughtworks.selenium.Selenium;
import com.thoughtworks.selenium.condition.ConditionRunner;
import org.jbehave.core.Embeddable;
import com.test.help.tools.SeleniumContextFixed;
import org.jbehave.core.configuration.Configuration;
import org.jbehave.core.embedder.Embedder;
import org.jbehave.core.io.LoadFromClasspath;
import org.jbehave.core.io.StoryFinder;
import org.jbehave.core.junit.JUnitStories;
import org.jbehave.core.reporters.StoryReporterBuilder;
import org.jbehave.core.steps.InjectableStepsFactory;
import org.jbehave.core.steps.InstanceStepsFactory;
import com.test.steps.MySteps;
import org.jbehave.core.steps.SilentStepMonitor;
import org.jbehave.web.selenium.*;



import static org.jbehave.core.io.CodeLocations.codeLocationFromClass;
import static org.jbehave.core.reporters.Format.*;

/**
 * <p>
 * {@link Embeddable} class to run multiple textual stories via JUnit.
 * </p>
 * <p>
 * Stories are specified in classpath and correspondingly the {@link LoadFromClasspath} story loader is configured.
 * </p> 
 */
public class MyStories extends JUnitStories {

    private ContextView contextView = new LocalFrameContextView().sized(500, 50).located(0,600);
    private SeleniumContext context = new SeleniumContextFixed();

    @Override
    public Configuration configuration() {

        Class<? extends Embeddable> embeddableClass = this.getClass();
        return new SeleniumConfiguration()

                .useStoryLoader(new LoadFromClasspath(embeddableClass))
                .useStepMonitor(new SeleniumStepMonitor(contextView,context, new SilentStepMonitor()))
                .useStoryReporterBuilder(new StoryReporterBuilder()
                        .withCodeLocation(codeLocationFromClass(embeddableClass))
                        .withDefaultFormats()
                        .withFormats(CONSOLE, TXT, HTML, XML));

    }

    @Override
    public InjectableStepsFactory stepsFactory() {
        Configuration configuration = configuration();
        return new InstanceStepsFactory(configuration,
                new MySteps());
    }


    @Override
    protected List<String> storyPaths() {
        String stories = "**/" + System.getProperty("stories.to.run", "*.story");
        return new StoryFinder()
                .findPaths(codeLocationFromClass(this.getClass()), stories, "**/excluded*.story");

    // This Embedder is used by Maven or Ant and it will override anything set in the constructor


    }

    }
