:: parameter %1 is the source directory
:: parameter %2 is the image output directory
 
del /S/Q/F html
del /S/Q/F PlantUML
 
:: set tools
:: SET GRAPHVIZ_DOT=.\tools\Graphviz2.38\bin\dot.exe
SET DOXYGEN_EXE=.\tools\doxygen-1.8.20\doxygen.exe
::SET PLANTUML_JAR=.\tools\plantuml\plantuml.jar
 
:: set source dir
:: SET SOURCE_DIR=.\mcu\orca\**
 
:: set image output folder for plantuml / image source folder for doxygen
:: SET DOC_IMG_PATH=PlantUML
:: mkdir %DOC_IMG_PATH%
 
:: call plantuml.jar for current dir
:: %PLANTUML_JAR% -v -keepfiles -o "%DOC_IMG_PATH%" "%SOURCE_DIR%.(c|cpp|doc|h)" "./*.md"
 
:: call doxygen for current dir (doxyfile)
%DOXYGEN_EXE% index.doxyfile
