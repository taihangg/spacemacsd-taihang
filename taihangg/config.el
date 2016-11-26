;;; config.el --- Better Emacs Defaults Layer configuration variables File
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Thomas de Beauchêne <thomas.de.beauchene@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(global-linum-mode t)

;; improve occur
(defun occur-dwim ()
  "Call `occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
            (buffer-substring-no-properties
             (region-beginning)
             (region-end))
          (let ((sym (thing-at-point 'symbol)))
            (when (stringp sym)
              (regexp-quote sym))))
        regexp-history)
  (call-interactively 'occur)
  )


;;(require 'color-theme-solarized)
;;(color-theme-solarized)


(defun my-byte-compile-and-recompile-directory (directory)
       (interactive "DByte compile and recompile directory: \n")
       (byte-recompile-directory directory 0)
       )

;;(my-byte-compile-and-recompile-directory "~/.emacs.d")

(defun my-byte-compile-and-recompile-directory-force (directory)
       (interactive "DByte compile and recompile directory: \n")
       (byte-recompile-directory directory 0 t)
       )

