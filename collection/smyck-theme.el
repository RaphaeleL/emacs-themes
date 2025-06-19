(deftheme smyck
  "smyck-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (smyck-colors
        '(
          (bg         . "#1b1b1b")
          (fg         . "#f7f7f7")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#207483")
          (selection-fg . "#f7f7f7")
          (black      . "#000000")
          (red        . "#b84131")
          (green      . "#7da900")
          (yellow     . "#c4a500")
          (blue       . "#62a3c4")
          (magenta    . "#ba8acc")
          (cyan       . "#207383")
          (white      . "#a1a1a1")
          (br-black   . "#7a7a7a")
          (br-red     . "#d6837c")
          (br-green   . "#c4f137")
          (br-yellow  . "#fee14d")
          (br-blue    . "#8dcff0")
          (br-magenta . "#f79aff")
          (br-cyan    . "#6ad9cf")
          (br-white   . "#f7f7f7")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key smyck-colors)) 'unspecified))))

  (custom-theme-set-faces
   'smyck

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

(provide-theme 'smyck)
