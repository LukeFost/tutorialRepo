# make sure that packages are downloaded automatically
needed_packages <- c("modules", "dplyr")

installed <- rownames(installed.packages())

packages_to_install <- setdiff(needed_packages, installed)

if (length(packages_to_install) > 0) {
    install.packages(packages_to_install)
} else {
    print("no packages to install :)")
}

# access the modules in a separate folder

testFile <- modules::use("R/test/test.R")

varTest <- "What up bros??"

testResult <- testFile$body$printText(varTest)

nextTextResult <- testFile$body$fixTest(testResult)

print(nextTextResult, quote = FALSE)

# get the value from a module and input to another module
