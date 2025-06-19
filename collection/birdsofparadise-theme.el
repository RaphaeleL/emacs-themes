(deftheme birdsofparadise
  "birdsofparadise-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (birdsofparadise-colors
        '(
          (bg         . "#2a1f1d")
          (fg         . "#e0dbb7")
          (cursor     . "#573d26")
          (cursor-txt . "#573d26")
          (selection  . "#563c27")
          (selection-fg . "#e0dbbb")
          (black      . "#573d26")
          (red        . "#be2d26")
          (green      . "#6ba18a")
          (yellow     . "#e99d2a")
          (blue       . "#5a86ad")
          (magenta    . "#ac80a6")
          (cyan       . "#74a6ad")
          (white      . "#e0dbb7")
          (br-black   . "#9b6c4a")
          (br-red     . "#e84627")
          (br-green   . "#95d8ba")
          (br-yellow  . "#d0d150")
          (br-blue    . "#b8d3ed")
          (br-magenta . "#d19ecb")
          (br-cyan    . "#93cfd7")
          (br-white   . "#fff9d5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key birdsofparadise-colors)) 'unspecified))))

  (custom-theme-set-faces
   'birdsofparadise

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

(provide-theme 'birdsofparadise)
