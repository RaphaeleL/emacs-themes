(deftheme githubdarkdimmed
  "githubdarkdimmed-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (githubdarkdimmed-colors
        '(
          (bg         . "#22272e")
          (fg         . "#adbac7")
          (cursor     . "#539bf5")
          (cursor-txt . "#539bf5")
          (selection  . "#adbac7")
          (selection-fg . "#22272e")
          (black      . "#545d68")
          (red        . "#f47067")
          (green      . "#57ab5a")
          (yellow     . "#c69026")
          (blue       . "#539bf5")
          (magenta    . "#b083f0")
          (cyan       . "#39c5cf")
          (white      . "#909dab")
          (br-black   . "#636e7b")
          (br-red     . "#ff938a")
          (br-green   . "#6bc46d")
          (br-yellow  . "#daaa3f")
          (br-blue    . "#6cb6ff")
          (br-magenta . "#dcbdfb")
          (br-cyan    . "#56d4dd")
          (br-white   . "#cdd9e5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key githubdarkdimmed-colors)) 'unspecified))))

  (custom-theme-set-faces
   'githubdarkdimmed

   `(default ((,class (:background ,(funcall safe-get-color 'bg)
                                   :foreground ,(funcall safe-get-color 'fg)))))
   `(cursor ((,class (:background ,(funcall safe-get-color 'cursor)
                                  :foreground ,(funcall safe-get-color 'cursor-txt)))))
   `(region ((,class (:background ,(funcall safe-get-color 'selection)
                                  :foreground ,(funcall safe-get-color 'selection-fg)))))
   `(highlight ((,class (:background ,(funcall safe-get-color 'selection)))))
   `(fringe ((,class (:background ,(funcall safe-get-color 'bg)))))
   `(minibuffer-prompt ((,class (:foreground ,(funcall safe-get-color 'blue)
                                             :weight bold))))
   `(show-paren-match ((,class (:background ,(funcall safe-get-color 'br-yellow)
                                            :foreground ,(funcall safe-get-color 'bg)
                                            :weight bold))))
   `(show-paren-mismatch ((,class (:background ,(funcall safe-get-color 'br-red)
                                               :foreground ,(funcall safe-get-color 'bg)
                                               :weight bold))))))

(provide-theme 'githubdarkdimmed)
