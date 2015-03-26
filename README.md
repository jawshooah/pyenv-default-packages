# pyenv-default-packages

This pyenv plugin hooks into the `pyenv install` command to
automatically install packages every time you install a new version of
Python.

## Installation

Make sure you have the latest pyenv version, then run:

    git clone https://github.com/jawshooah/pyenv-default-packages.git ~/.pyenv/plugins/pyenv-default-packages

## Usage

pyenv-default-packages automatically installs the packages listed in the
`~/.pyenv/default-packages` file every time you successfully install a new
version of Python with `pyenv install`.

Specify packages in `~/.pyenv/default-packages` by name, one per line. This
file should follow the pip [requirements file format][1]. For example:

    pytest>=2.6.4
    futures; python_version < '2.7'
    http://my.package.repo/SomePackage-1.0.4.zip; python_version >= '3.4'

A line that begins with `#` is treated as a comment and ignored. Whitespace
followed by a `#` causes the `#` and the remainder of the line to be treated
as a comment.

## License

(The MIT License)

Copyright (c) 2015 Joshua Hagins

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[1]: https://pip.pypa.io/en/latest/reference/pip_install.html#requirements-file-format
