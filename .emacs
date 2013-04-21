(set-face-attribute 'default nil :font "ProggyCleanTT-12")
(load-theme 'wombat t)
(tool-bar-mode -1)
(menu-bar-mode -99)
(set-scroll-bar-mode nil)
(setq c-default-style "linux")
(setq-default c-basic-offset 4)


(defun djcb-full-screen-toggle ()
  "toggle full-screen mode"
  (interactive)
  (shell-command "wmctrl -r :ACTIVE: -btoggle,fullscreen"))

(global-set-key [(s return)] 'djcb-full-screen-toggle)

(defun shell-named (name)
  (shell)
  (rename-buffer name)
  (process-kill-without-query (get-buffer-process name)))

(defmacro hot-shell (name)
  `(lambda () (interactive)
     (if (get-buffer ,name) (switch-to-buffer ,name)
       (shell-named ,name))))

(global-set-key [(meta ?1)] (hot-shell "*shell1*"))
(global-set-key [(meta ?2)] (hot-shell "*shell2*"))
(global-set-key [(meta ?3)] (hot-shell "*shell3*"))
(global-set-key [(meta ?4)] (hot-shell "*shell4*"))
(global-set-key [(meta ?5)] (hot-shell "*shell5*"))
(global-set-key [(meta ?6)] (hot-shell "*shell6*"))
(global-set-key [(meta ?7)] (hot-shell "*shell7*"))
(global-set-key [(meta ?8)] (hot-shell "*shell8*"))
(global-set-key [(meta ?9)] (hot-shell "*shell9*"))
(global-set-key [(meta ?0)] (hot-shell "*shell0*"))

(global-set-key "\C-x\C-b" 'buffer-menu)

(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal :underline nil))
 (face-list))
