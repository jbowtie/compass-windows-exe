Compass Windows executable
--------------------------

This is a little convenience to ease deployment of [Compass](https://github.com/chriseppstein/compass) under Windows.
I generally prefer standalone executables for incorporation into build scripts,
others might use it in cases where installing Ruby is an issue.

The compass.rb script is tweaked to include the ["susy" gem](https://github.com/ericam/susy) explicitly; if
there are other gems you want included this is the file to tweak.

[OCRA](https://github.com/larsch/ocra) is used to produce the final executable.

The executable is generated simply by running:

    ocra compass.rb
