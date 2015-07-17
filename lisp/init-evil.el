(lqz/require 'evil)
(lqz/require 'evil-anzu) ;; show search info in evil-mode

;; Disable evil for certain major-modes
(setq lqz/evil-disabled-modes
      '(eshell-mode
	wl-summary-mode
	compilation-mode
	completion-list-mode
	help-mode
	edit-server-edit-mode)
      lqz/evil-normal-state-modes
      '(org-mode))

(dolist (mode lqz/evil-disabled-modes)
  (add-to-list 'evil-emacs-state-modes mode))
(dolist (mode lqz/evil-normal-state-modes)
  (add-to-list 'evil-normal-state-modes mode))

;; set evil default state to emacs
(setq evil-default-state 'emacs
      evil-move-cursor-back nil)

;; redefine the evil initialize function
(defun evil-initialize ()
  (unless (or (minibufferp) (member major-mode evil-emacs-state-modes))
    (evil-local-mode 1)
    (evil-set-initial-state major-mode 'normal)))

;; initialize evil
(evil-mode 1)

(add-hook 'prog-mode-hook 'evil-initialize)

;; keep some common keys of emacs in insert state
(define-key evil-insert-state-map (kbd "C-a") 'beginning-of-line)
(define-key evil-insert-state-map (kbd "C-e") 'end-of-line)
(define-key evil-insert-state-map (kbd "C-p") 'previous-line)
(define-key evil-insert-state-map (kbd "C-n") 'next-line)
(define-key evil-insert-state-map (kbd "C-k") 'kill-line)
(define-key evil-insert-state-map (kbd "M-a") 'backward-sentence)
(define-key evil-insert-state-map (kbd "M-e") 'forward-sentence)


;; remap escape key
(lqz/require 'key-chord)
(setq key-chord-two-keys-delay 0.4)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-define evil-emacs-state-map "jk" 'evil-normal-state)
(key-chord-define evil-visual-state-map "jk" 'evil-normal-state)
(key-chord-mode 1)


;;-----------------------
;; evil-leader
;;-----------------------
(lqz/require 'evil-leader)

(global-evil-leader-mode t)
(evil-leader/set-leader ";")

;; remap * and #
(define-key evil-motion-state-map "*" 'highlight-symbol-next)
(define-key evil-motion-state-map "#" 'highlight-symbol-prev)


;;-----------------------
;; evil-args
;;-----------------------
(lqz/require 'evil-args)

;; bind evil-args text objects
(define-key evil-inner-text-objects-map "a" 'evil-inner-arg)
(define-key evil-outer-text-objects-map "a" 'evil-outer-arg)

;; bind evil-forward/backward-args
(define-key evil-normal-state-map "L" 'evil-forward-arg)
(define-key evil-normal-state-map "H" 'evil-backward-arg)
(define-key evil-motion-state-map "L" 'evil-forward-arg)
(define-key evil-motion-state-map "H" 'evil-backward-arg)

;; bind evil-jump-out-args
(define-key evil-normal-state-map "K" 'evil-jump-out-args)

;; use Q to quit window in evil mode
(define-key evil-normal-state-map "Q" 'quit-window)


;;-----------------------
;; evil-matchit
;;-----------------------
(lqz/require 'evil-matchit)
(global-evil-matchit-mode 1)


;;-----------------------
;; evil-exchange
;;-----------------------
(lqz/require 'evil-exchange)
(setq evil-exchange-key (kbd "zx"))
(evil-exchange-install)


;;-----------------------
;; evil-snipe
;;-----------------------
(lqz/require 'evil-snipe)
(evil-snipe-mode 1)
(setq evil-snipe-repeat-keys t
      evil-snipe-scope 'visible
      evil-snipe-repeat-scope 'whole-visible
      evil-snipe-enable-highlight t
      evil-snipe-enable-incremental-highlight t)


;;-----------------------
;; evil-surround
;;-----------------------
(lqz/require 'evil-surround)
(global-evil-surround-mode 1)



(provide 'init-evil)
