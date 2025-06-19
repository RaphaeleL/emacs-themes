(deftheme misterioso
  "misterioso-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (misterioso-colors
        '(
          (bg         . "#2d3743")
          (fg         . "#e1e1e0")
          (cursor     . "#000000")
          (cursor-txt . "#ffffff")
          (selection  . "#2d37ff")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#ff4242")
          (green      . "#74af68")
          (yellow     . "#ffad29")
          (blue       . "#338f86")
          (magenta    . "#9414e6")
          (cyan       . "#23d7d7")
          (white      . "#e1e1e0")
          (br-black   . "#555555")
          (br-red     . "#ff3242")
          (br-green   . "#74cd68")
          (br-yellow  . "#ffb929")
          (br-blue    . "#23d7d7")
          (br-magenta . "#ff37ff")
          (br-cyan    . "#00ede1")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key misterioso-colors)) 'unspecified))))

  (custom-theme-set-faces
   'misterioso

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

(provide-theme 'misterioso)
