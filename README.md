SEI15 Badges Generator
======================

Printable badges generator for 2015 CeSIUM's **Computer Engineering Week @ Minho University** event

Sample output
-------------

See [this file](exemplo.pdf?raw=true).

Default Usage
-------------

1 - Create a file with **.in** extension like the example below
```
Badge title
code
code
code
code
...
```

2 - Run ```make your_file_name_here.pdf```

3 - Print those awesome badges

Customization
-------------

Change the text in the model latex file (modelo.tex) to your liking, but make sure the like ```--code goes here--``` stays intact, otherwise the generation will not produce the desired results.

How it works
------------
1. A bash script parses the **.in** file, translates it into latex code and then replaces the ```--code goes here--``` line in the latex template file with the new latex code.
2. Generate the .pdf from .tex
