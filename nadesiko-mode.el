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
  (font-lock-ensure)

  (if nadesiko-tab-width
      (setq tab-width nadesiko-tab-width)
    (setq tab-width 2))

  (setq comment-start "#")
  (setq comment-end "")
)

(add-to-list 'auto-mode-alist '("\\.nako3$" . nadesiko-mode))

(font-lock-add-keywords 'nadesiko-mode
                        '(("もし" . font-lock-keyword-face)
                          ("ならば" . font-lock-keyword-face)
                          ("違えば" . font-lock-keyword-face)
                          ("ここまで" . font-lock-keyword-face)
                          ("代入" . font-lock-keyword-face)
                          ("定" . font-lock-keyword-face)
                          ("戻" . font-lock-keyword-face)
                          ("●" . font-lock-function-name-face)
                          ("はい" . font-lock-constant-face)
                          ("いいえ" . font-lock-constant-face)))

(provide 'nadesiko-mode)

;;; nadesiko-mode.el ends here
