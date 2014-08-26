#Compass Windows executable

## Description
This is a little convenience to ease deployment of [Compass](https://github.com/chriseppstein/compass) under Windows.
I generally prefer standalone executables for incorporation into build scripts,
others might use it in cases where installing Ruby is an issue.

The compass.rb script is tweaked to include the ["susy"](https://github.com/ericam/susy) , 
["compass-normalize"](https://github.com/ksmandersen/compass-normalize) and ["sass"]
gems explicitly, as I use these gems on most projects.
You should edit this file if there are other gems you want to compile
into the executable.

[OCRA](https://github.com/larsch/ocra) is used to produce the final executable.

The executable is generated simply by running:

    ocra compass.rb
	
## Prequesites
	- ruby 2.0.0
	- gem
	- Ruby DevKit 2.0.0
	- gem (rubygems,wdm,compass,susy,compass-normalize,sass,io-console,ocra)