(defun spacemeow/post-init-org-brain ()
  (with-eval-after-load 'org-brain
    (setq org-brain-path "~/mini-galaxy")
    (evil-set-initial-state 'org-brain-visualize-mode 'normal)
    (spacemeow//init-org-brain-keybinding)
    ))

(defun spacemeow//init-org-brain-keybinding ()
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "b" 'org-brain-visualize-back)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "h" 'org-brain-new-child)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "c" 'org-brain-add-child)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "C" 'org-brain-remove-child)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "p" 'org-brain-add-parent)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "P" 'org-brain-remove-parent)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "f" 'org-brain-add-friendship)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "F" 'org-brain-remove-friendship)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "n" 'org-brain-pin)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "t" 'org-brain-set-title)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "T" 'org-brain-set-tags)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "d" 'org-brain-delete-entry)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "l" 'org-brain-visualize-add-resource)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "y" 'org-brain-visualize-paste-resource)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "a" 'org-brain-visualize-attach)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "o" 'org-brain-goto-current)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "O" 'org-brain-goto)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "v" 'org-brain-visualize)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "r" 'org-brain-visualize-random)
  (spacemacs/set-leader-keys-for-major-mode 'org-brain-visualize-mode "R" 'org-brain-visualize-wander)
)
