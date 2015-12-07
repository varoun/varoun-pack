;;; Org Mode stuff

;;; Directory for all GTD related files.
(setq org-directory "~/gtd/")



;;; Global key bindings.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;;; For Capture mode.
(global-set-key "\C-cc" 'org-capture)
(setq org-default-notes-file (concat org-directory "capture.org"))


;;; Agenda files.
(setq org-agenda-files (list "~/gtd/endurance.org"
                             "~/gtd/home.org"
                             "~/gtd/birthdays.org"))

;;; Refile.
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

;;; Todo completions.
(setq org-log-done 'note)
