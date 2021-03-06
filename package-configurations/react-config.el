(defun spacemeow/post-init-flycheck ()
  (with-eval-after-load 'flycheck
    (add-hook 'flycheck-mode-hook #'spacemeow//use-eslint-from-node-modules)))

(defun spacemeow//use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root)))
         (eslintrc (and root
                        (expand-file-name ".eslintrc.js"
                                          root))))
    (when (and eslint (file-executable-p eslint) (file-exists-p eslintrc))
      (setq-local flycheck-javascript-eslint-executable eslint))))
