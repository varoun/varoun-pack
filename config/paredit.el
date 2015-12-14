;; Swap square and parens in paredit
(define-key paredit-mode-map (kbd "[") 'paredit-open-round)
(define-key paredit-mode-map (kbd "]") 'paredit-close-round)
(define-key paredit-mode-map (kbd "M-[") 'paredit-wrap-round)
(define-key paredit-mode-map (kbd "(") 'paredit-open-square)
(define-key paredit-mode-map (kbd ")") 'paredit-close-square)
