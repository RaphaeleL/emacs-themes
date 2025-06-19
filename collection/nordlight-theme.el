(deftheme nordlight
  "nordlight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (nordlight-colors
        '(
          (bg         . "#e5e9f0")
          (fg         . "#414858")
          (cursor     . "#88c0d0")
          (cursor-txt . "#3b4252")
          (selection  . "#d8dee9")
          (selection-fg . "#4c556a")
          (black      . "#3b4252")
          (red        . "#bf616a")
          (green      . "#a3be8c")
          (yellow     . "#ebcb8b")
          (blue       . "#81a1c1")
          (magenta    . "#b48ead")
          (cyan       . "#88c0d0")
          (white      . "#d8dee9")
          (br-black   . "#4c566a")
          (br-red     . "#bf616a")
          (br-green   . "#a3be8c")
          (br-yellow  . "#ebcb8b")
          (br-blue    . "#81a1c1")
          (br-magenta . "#b48ead")
          (br-cyan    . "#8fbcbb")
          (br-white   . "#eceff4")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key nordlight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'nordlight

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

(provide-theme 'nordlight)
