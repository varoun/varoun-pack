;;; Org Mode stuff

(setq org-log-done 'note)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)


(setq org-agenda-files (list "~/notes/work.org"
                             "~/notes/home.org"))
