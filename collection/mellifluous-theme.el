(deftheme mellifluous
  "mellifluous-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (mellifluous-colors
        '(
          (bg         . "#1a1a1a")
          (fg         . "#dadada")
          (cursor     . "#bfad9e")
          (cursor-txt . "#1a1a1a")
          (selection  . "#2d2d2d")
          (selection-fg . "#c0af8c")
          (black      . "#1a1a1a")
          (red        . "#d29393")
          (green      . "#b3b393")
          (yellow     . "#cbaa89")
          (blue       . "#a8a1be")
          (magenta    . "#b39fb0")
          (cyan       . "#c0af8c")
          (white      . "#dadada")
          (br-black   . "#5b5b5b")
          (br-red     . "#c95954")
          (br-green   . "#828040")
          (br-yellow  . "#a6794c")
          (br-blue    . "#5a6599")
          (br-magenta . "#9c6995")
          (br-cyan    . "#74a39e")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key mellifluous-colors)) 'unspecified))))

  (custom-theme-set-faces
   'mellifluous

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

(provide-theme 'mellifluous)
