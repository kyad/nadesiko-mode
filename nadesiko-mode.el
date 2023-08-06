;;; nadesiko-mode.el --- Major mode for editing nadesiko files

;;; Commentary:

;; Major mode for editing nadesiko files.

;;; Code:

(defvar nadesiko-tab-width nil "Width of a tab for nadesiko mode.")

(defconst nadesiko-mode-syntax-table
  (let ((table (make-syntax-table)))
    (modify-syntax-entry ?「 "\('」" table)
    (modify-syntax-entry ?」 "\)「" table)
    (modify-syntax-entry ?# "< b" table)
    (modify-syntax-entry ?\n "> b" table)
    table))

(define-derived-mode nadesiko-mode prog-mode "なでしこ"
  "nadesiko mode is a major mode for editing nadesiko files"
  :syntax-table nadesiko-mode-syntax-table

  (if nadesiko-tab-width
      (setq tab-width nadesiko-tab-width)
    (setq tab-width 2))

  (setq comment-start "#")
  (setq comment-end "")
)

(add-to-list 'auto-mode-alist '("\\.nako3$" . nadesiko-mode))

(provide 'nadesiko-mode)

;;; nadesiko-mode.el ends here
