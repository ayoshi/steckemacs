;;; .emacs.el --- Emacs Ayoshi

;; Copyright 2013, Steckerhalter
;; Copyright 2014, Ayoshi

;; Original Author: steckerhalter
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
;; is kept in `config.org' and this file serves only as a way to
;; load that config.

;;; Requirements:

;; Emacs 24.3

;;; Code:
;;(setq ns-use-srgb-colorspace t)
(require 'cl)
(require 'org)
(package-initialize)

(setq config-directory (file-name-directory (file-truename load-file-name)))
(setq org-confirm-babel-evaluate nil)

(org-babel-load-file (expand-file-name "config.org" config-directory))
