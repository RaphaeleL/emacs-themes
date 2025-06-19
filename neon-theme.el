(deftheme neon
  "neon-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (neon-colors
        '(
          (bg         . "#14161a")
          (fg         . "#00fffc")
          (cursor     . "#c7c7c7")
          (cursor-txt . "#ffffff")
          (selection  . "#0013ff")
          (selection-fg . "#08d2cf")
          (black      . "#000000")
          (red        . "#ff3045")
          (green      . "#5ffa74")
          (yellow     . "#fffc7e")
          (blue       . "#0208cb")
          (magenta    . "#f924e7")
          (cyan       . "#00fffc")
          (white      . "#c7c7c7")
          (br-black   . "#686868")
          (br-red     . "#ff5a5a")
          (br-green   . "#75ff88")
          (br-yellow  . "#fffd96")
          (br-blue    . "#3c40cb")
          (br-magenta . "#f15be5")
          (br-cyan    . "#88fffe")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key neon-colors)) 'unspecified))))

  (custom-theme-set-faces
   'neon

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

(provide-theme 'neon)
