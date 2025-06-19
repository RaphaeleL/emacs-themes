(deftheme ic_orange_ppl
  "ic_orange_ppl-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ic_orange_ppl-colors
        '(
          (bg         . "#262626")
          (fg         . "#ffcb83")
          (cursor     . "#fc531d")
          (cursor-txt . "#ffc88a")
          (selection  . "#c14020")
          (selection-fg . "#ffc88a")
          (black      . "#000000")
          (red        . "#c13900")
          (green      . "#a4a900")
          (yellow     . "#caaf00")
          (blue       . "#bd6d00")
          (magenta    . "#fc5e00")
          (cyan       . "#f79500")
          (white      . "#ffc88a")
          (br-black   . "#6a4f2a")
          (br-red     . "#ff8c68")
          (br-green   . "#f6ff40")
          (br-yellow  . "#ffe36e")
          (br-blue    . "#ffbe55")
          (br-magenta . "#fc874f")
          (br-cyan    . "#c69752")
          (br-white   . "#fafaff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ic_orange_ppl-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ic_orange_ppl

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

(provide-theme 'ic_orange_ppl)
