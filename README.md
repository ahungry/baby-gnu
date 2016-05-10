# Baby Gnu

[![MELPA](http://melpa.org/packages/baby-gnu.svg)](http://melpa.org/#/baby-gnu)

This is a small package that allows you to take care of a digital pet
from within emacs, called baby-gnu.

## Installation
To install, clone the repository via:

```
cd ~/.emacs.d
git clone https://github.com/ahungry/baby-gnu.git
```

Then, make sure to add the following to your ~/.emacs:

### Using require

```lisp
(add-to-list 'load-path "~/.emacs.d/baby-gnu/")
(require 'baby-gnu)
```

### Using baby-gnu.el

After requiring it, you should see him start pestering you soon after.

## TODO

Add some interactivity in a special *baby-gnu* buffer (and likely some
minor animation/mini-games).

## License
GPLv3
