(deftheme alienblood
  "alienblood-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (alienblood-colors
        '(
          (bg         . "#0f1610")
          (fg         . "#637d75")
          (cursor     . "#73fa91")
          (cursor-txt . "#0f1610")
          (selection  . "#1d4125")
          (selection-fg . "#73fa91")
          (black      . "#112616")
          (red        . "#7f2b27")
          (green      . "#2f7e25")
          (yellow     . "#717f24")
          (blue       . "#2f6a7f")
          (magenta    . "#47587f")
          (cyan       . "#327f77")
          (white      . "#647d75")
          (br-black   . "#3c4812")
          (br-red     . "#e08009")
          (br-green   . "#18e000")
          (br-yellow  . "#bde000")
          (br-blue    . "#00aae0")
          (br-magenta . "#0058e0")
          (br-cyan    . "#00e0c4")
          (br-white   . "#73fa91")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key alienblood-colors)) 'unspecified))))

  (custom-theme-set-faces
   'alienblood

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

(provide-theme 'alienblood)
