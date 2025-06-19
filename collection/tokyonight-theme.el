(deftheme tokyonight
  "tokyonight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tokyonight-colors
        '(
          (bg         . "#1a1b26")
          (fg         . "#c0caf5")
          (cursor     . "#c0caf5")
          (cursor-txt . "#15161e")
          (selection  . "#33467c")
          (selection-fg . "#c0caf5")
          (black      . "#15161e")
          (red        . "#f7768e")
          (green      . "#9ece6a")
          (yellow     . "#e0af68")
          (blue       . "#7aa2f7")
          (magenta    . "#bb9af7")
          (cyan       . "#7dcfff")
          (white      . "#a9b1d6")
          (br-black   . "#414868")
          (br-red     . "#f7768e")
          (br-green   . "#9ece6a")
          (br-yellow  . "#e0af68")
          (br-blue    . "#7aa2f7")
          (br-magenta . "#bb9af7")
          (br-cyan    . "#7dcfff")
          (br-white   . "#c0caf5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tokyonight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tokyonight

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

(provide-theme 'tokyonight)
