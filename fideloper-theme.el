(deftheme fideloper
  "fideloper-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (fideloper-colors
        '(
          (bg         . "#292f33")
          (fg         . "#dbdae0")
          (cursor     . "#d4605a")
          (cursor-txt . "#fefff2")
          (selection  . "#efb8ac")
          (selection-fg . "#ffffff")
          (black      . "#292f33")
          (red        . "#cb1e2d")
          (green      . "#edb8ac")
          (yellow     . "#b7ab9b")
          (blue       . "#2e78c2")
          (magenta    . "#c0236f")
          (cyan       . "#309186")
          (white      . "#eae3ce")
          (br-black   . "#092028")
          (br-red     . "#d4605a")
          (br-green   . "#d4605a")
          (br-yellow  . "#a86671")
          (br-blue    . "#7c85c4")
          (br-magenta . "#5c5db2")
          (br-cyan    . "#819090")
          (br-white   . "#fcf4df")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key fideloper-colors)) 'unspecified))))

  (custom-theme-set-faces
   'fideloper

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

(provide-theme 'fideloper)
