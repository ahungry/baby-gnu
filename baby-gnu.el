;;; baby-gnu.el --- A game in emacs

;; Copyright (C) 2016  Matthew Carter

;; Author: Matthew Carter <m@ahungry.com>
;; Maintainer: Matthew Carter <m@ahungry.com>
;; URL: https://github.com/ahungry/dungeon-mode
;; Version: 0.0.0
;; Keywords: ahungry emacs geben helm projectile debug
;; Package-Requires: ((emacs "24"))

;; This file is not part of GNU Emacs

;;; License:

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; A virtual pet game

;;; News:

;;;; Changes since 0.0.0:
;; - Created the project

;;; Code:

(defvar baby-gnu-image "
      ,,
`-----O=
|''''|
")

(defvar baby-gnu-food-count 5)

(defvar baby-gnu-wants
  (list
   "I'm hungry, feed me!"
   "I'm feeling lonely over here, will you come play a game with me?"
   "Can we do something GNU today?"
   ))

(defun baby-gnu-output (what)
  "Say WHAT something in the special buffer."
  )

(defun baby-gnu-say (message)
  "Baby Gnu will say MESSAGE to the user."
  (baby-gnu-output message)
  (message (format "%s\nBaby Gnu says, \"%s\"" baby-gnu-image message)))

(defun baby-gnu-say-want ()
  "Pick a random want and inform the user."
  (interactive)
  (let ((want (nth (random (length baby-gnu-wants)) baby-gnu-wants)))
    (baby-gnu-say want)))

(defun baby-gnu-feed ()
  "Feed your baby gnu."
  (interactive)
  (if (> baby-gnu-food-count 0)
      (progn
        (decf baby-gnu-food-count)
        (baby-gnu-say "Thanks!  That hit the spot!"))
    (progn
      (baby-gnu-say "I'm so hungry...please can I have a bite? I
      heard you can earn food by making some commits..."))))

(defadvice vc-next-action (after baby-gnu-get-food)
  "Add some food for the baby gnu when we commit."
  (incf baby-gnu-food-count (random 5)))

(provide 'baby-gnu)

;;; baby-gnu ends here
