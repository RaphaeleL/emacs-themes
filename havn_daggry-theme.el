(deftheme havn_daggry
  "havn_daggry-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (havn_daggry-colors
        '(
          (bg         . "#f8f9fb")
          (fg         . "#3e4a77")
          (cursor     . "#386a51")
          (cursor-txt . "#d7dbea")
          (selection  . "#d4e8de")
          (selection-fg . "#333c61")
          (black      . "#212840")
          (red        . "#8f564b")
          (green      . "#5c705b")
          (yellow     . "#b36f00")
          (blue       . "#40567a")
          (magenta    . "#775d93")
          (cyan       . "#8a5a7e")
          (white      . "#d7dbea")
          (br-black   . "#212840")
          (br-red     . "#bd533e")
          (br-green   . "#79957b")
          (br-yellow  . "#f3b550")
          (br-blue    . "#6988bc")
          (br-magenta . "#7b7393")
          (br-cyan    . "#a4879c")
          (br-white   . "#d7dbea")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key havn_daggry-colors)) 'unspecified))))

  (custom-theme-set-faces
   'havn_daggry

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

(provide-theme 'havn_daggry)
