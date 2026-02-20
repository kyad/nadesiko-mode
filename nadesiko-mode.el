;;; nadesiko-mode.el --- Major mode for editing nadesiko files

;;; Commentary:

;; Major mode for editing nadesiko files.

;;; Code:

(defvar nadesiko-tab-width nil "Width of a tab for nadesiko mode.")

(define-derived-mode nadesiko-mode prog-mode "なでしこ"
  "nadesiko mode is a major mode for editing nadesiko files"
  (setq font-lock-defaults '(nadesiko-mode-syntax-keywords))

  (if nadesiko-tab-width
      (setq tab-width nadesiko-tab-width)
    (setq tab-width 2))

  (setq comment-start "#")
  (setq comment-end "")
)

(add-to-list 'auto-mode-alist '("\\.nako$" . nadesiko-mode))

(defconst nadesiko-mode-syntax-keywords
  (list
   '("間" . font-lock-keyword-face)
   '("言" . font-lock-keyword-face)
   '("永遠" . font-lock-keyword-face)
   '("もし" . font-lock-keyword-face)
   '("ならば" . font-lock-keyword-face)
   '("違えば" . font-lock-keyword-face)
   '("区切" . font-lock-keyword-face)
   '("返" . font-lock-keyword-face)
   '("繰" . font-lock-keyword-face)
   '("ここまで" . font-lock-keyword-face)
   '("整数変換" . font-lock-keyword-face)
   '("代入" . font-lock-keyword-face)
   '("尋" . font-lock-keyword-face)
   '("定" . font-lock-keyword-face)
   '("配列数値変換" . font-lock-keyword-face)
   '("配列要素作成" . font-lock-keyword-face)
   '("表示" . font-lock-keyword-face)
   '("抜" . font-lock-keyword-face)
   '("戻" . font-lock-keyword-face)
   (cons
    (concat
     "\\(●\\)"
     "\\(.*\\)$")
    '((1 font-lock-function-name-face)
      (2 font-lock-function-name-face)))
   '("はい" . font-lock-constant-face)
   '("いいえ" . font-lock-constant-face)
   '("改行" . font-lock-constant-face)))

(provide 'nadesiko-mode)

;;; nadesiko-mode.el ends here
