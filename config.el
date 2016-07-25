;;; config.el --- spacemeow Layer packages File for Spacemacs
;; Copyright (c) 2015-2016 Spacemeow
;;
;; Author: Chutian Yang <yct21@12tcy.com>
;; URL: https://github.com/yct21/spacemeow
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar spacemeow-rescuetime-score -42.0 "Fetched productivity score from rescuetime.")
(defvar spacemeow-wakatime-total " NA " "Fetched wakatime summary")
(defun spacemacs//unset-scroll-margin ())
(setq frame-title-format
      '(""
        (:eval (if org-clock-current-task
                   (format "* %s *" org-clock-current-task)
                 "* IDLE *"))
        " | "
        (:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name)) "%b"))))

(define-abbrev-table 'global-abbrev-table '(
  ;; math/unicode symbols
  ("42em" "yct21@12tcy.com")
  ("42in" "∈")
  ("42nin" "∉")
  ("42inf" "∞")
  ("42luv" "♥")
  ("42smly" "☺")))

(setq user-mail-address "yct21@12tcy.com")

(setq evil-shift-width 2)
