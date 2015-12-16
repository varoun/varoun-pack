;;; Org Mode stuff

;;; Directory for all GTD related files.
(setq org-directory "~/gtd/")



;;; Global key bindings.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;;; For Capture mode.
(global-set-key "\C-cc" 'org-capture)
(setq org-default-notes-file (concat org-directory "inbox.org"))
(setq org-capture-templates
      '(("i" "Inbox" entry (file+headline "~/gtd/inbox.org" "Inbox")
         "* IN %?\n %i :PROPERTIES: \n  :CREATED: %t \n  :END:")
        ("h" "Home" entry (file+headline "~/gtd/actions.org" "Home")
         "* TODO %?\n %i %t")
        ("o" "Office" entry (file+headline "~/gtd/actions.org" "Office")
         "* TODO %?\n %i %t")
        ("a" "Agenda" entry (file+headline "~/gtd/actions.org" "Agenda")
         "* TODO %?\n %i %t")
        ("j" "Journal" entry (file+datetree "~/gtd/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
        ("p" "Personal Project" entry
         (file+headline "~/gtd/projects.org" "Personal Projects")
         "* %?\n %i %t")
        ("w" "Professional Project" entry
         (file+headline "~/gtd/projects.org" "Professional Projects")
         "* %?\n %i %t")
        ("d" "Projects Delegated" entry
         (file+headline "~/gtd/projects.org" "Projects Delegated")
         "* %?\n %i %t")
        ("s" "Someday" entry (file "~/gtd/someday.org" )
         "* %?\n %i %t")
        ))


;;; Agenda files.
(setq org-agenda-files (list "~/gtd/actions.org"
                             "~/gtd/calendar.org"
                             "~/gtd/projects.org"
                             "~/gtd/someday.org"))

;;; Refile.
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

;;; Todo.
(setq org-todo-keywords
      '((sequence "TODO(t)" "Doing(p)" "Follow Up(f)" "|" "DONE(d)")
        (sequence "IN(i)" "|"
                  "Trashed(j)" "Someday(s)"
                  "Deferred(n)" "Delegated(w)" "Calendered(c)" "Done(d)")))

(setq org-log-done 'note)
