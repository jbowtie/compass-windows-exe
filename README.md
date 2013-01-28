Compass Windows executable
--------------------------

This is a little convenience to ease deployment under Windows.
I generally prefer standalone executables for incorporation into build scripts,
others might use it in cases where installing Ruby is an issue.

The compass.rb script is tweaked to include the "susy" gem explicitly; if
there are other gems you want included this is the file to tweak.

The `ocra` gem is used to produce the final executable.

The executable is generated simply by running:

  ocra compass.rb
