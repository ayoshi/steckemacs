;;; .emacs.el --- steckemacs

;; Copyright 2013, Steckerhalter

;; Author: steckerhalter
;; Keywords: emacs configuration init
;; URL: https://github.com/steckerhalter/steckemacs

;; This file is not part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; Emacs configuration that tries to fetch everything necessary from
;; ELPA, Marmelade and MELPA on startup. Instead of splitting
;; everything up I try to keep everything in one file. My theme called
;; `grandshell` is loaded from MELPA too. The literate configuration
;; is kept in `steckemacs.org' and this file serves only as a way to
;; load that config.

;;; Requirements:

;; Emacs 24.3.50

;;; Code:
;;(setq ns-use-srgb-colorspace t)
(require 'cl)
(package-initialize)

(setq steckemacs-directory (file-name-directory (file-truename load-file-name)))
(setq org-confirm-babel-evaluate nil)

(org-babel-load-file (expand-file-name "steckemacs.org" steckemacs-directory))

;;; .emacs ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   [("black" . "#8a8888")
    ("#EF3460" . "#F25A7D")
    ("#BDEF34" . "#DCF692")
    ("#EFC334" . "#F6DF92")
    ("#34BDEF" . "#92AAF6")
    ("#B300FF" . "#DF92F6")
    ("#3DD8FF" . "#5AF2CE")
    ("#FFFFFF" . "#FFFFFF")])
 '(custom-safe-themes
   (quote
    ("33c5a452a4095f7e4f6746b66f322ef6da0e770b76c0ed98a438e76c497040bb" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sp-pair-overlay-face ((t nil))))
