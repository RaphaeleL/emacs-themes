(deftheme github_dark
  "github_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (github_dark-colors
        '(
          (bg         . "#101216")
          (fg         . "#8b949e")
          (cursor     . "#c9d1d9")
          (cursor-txt . "#101216")
          (selection  . "#3b5070")
          (selection-fg . "#ffffff")
          (black      . "#000000")
          (red        . "#f78166")
          (green      . "#56d364")
          (yellow     . "#e3b341")
          (blue       . "#6ca4f8")
          (magenta    . "#db61a2")
          (cyan       . "#2b7489")
          (white      . "#ffffff")
          (br-black   . "#4d4d4d")
          (br-red     . "#f78166")
          (br-green   . "#56d364")
          (br-yellow  . "#e3b341")
          (br-blue    . "#6ca4f8")
          (br-magenta . "#db61a2")
          (br-cyan    . "#2b7489")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key github_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'github_dark

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

(provide-theme 'github_dark)
