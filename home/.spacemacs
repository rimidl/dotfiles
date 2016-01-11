(setq-default dotspacemacs-configuration-layers '(osx))

(setq dotspacemacs-additional-packages '(jbeans-theme haml-mode))

(setq-default dotspacemacs-configuration-layers '(git ruby yaml ruby-on-rails javascript html erlang))

(defun dotspacemacs/user-config ()
  ;; git
  (setq magit-push-always-verify nil)
  ;; layer ruby
  (setq-default ruby-version-manager 'rbenv)
  ;; layer javascript
  (setq-default js2-basic-offset 2)
  (setq-default js-indent-level 2)
  ;; layer html
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . fundamental))
)
