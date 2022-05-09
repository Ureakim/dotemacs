(require 'autothemer)

(autothemer-deftheme
 nebulae ""

 ((((class color) (min-colors #xFF)))

  (lightgray   "#b2b2b2")
  (darkgray    "#8e8e8e")
  (lightblack  "#262626")
  (darkblack   "#121212")
  (purple      "#9e85ac")
  (blue        "#6a8599")
  (brown       "#977e78")
  (ivory       "#a79a88")
	(red         "#e57b73")
  (orange      "#dba95a"))

  ((default               (:foreground lightgray :background lightblack))
   (cursor                (:foreground lightblack :background lightgray))
	 (region                (:foreground darkblack :background blue))
	 (fringe                (:foreground lightgray :background darkblack))
	 (mode-line             (:foreground lightgray :background darkblack))
	 (mode-line-inactive    (:foreground lightblack :background darkblack))
	 (hl-line               (:background darkblack))
	 (vertical-border       (:background darkblack))
	 (show-paren-match      (:foreground darkblack :background blue))
	 (minibuffer-prompt     (:foreground blue))

	 (font-lock-comment-face          (:foreground darkgray))
	 (font-lock-doc-face              (:foreground darkgray))
	 (font-lock-negation-char-face    (:foreground darkgray))

	 (font-lock-type-face (:foreground ivory))
	 (font-lock-keyword-face (:foreground ivory))

	 (font-lock-string-face (:foreground brown))

	 (font-lock-function-name-face (:foreground blue))
	 (font-lock-variable-name-face (:foreground blue))
	 
	 (font-lock-constant-face (:foreground purple :bold))
	 (font-lock-builtin-face (:foreground purple))
	 
	 (font-lock-warning-face (:foreground orange))

	 (warning (:foreground orange))

	 (ido-only-match     (:foreground lightgray :background darkblack))
	 (ido-first-match    (:foreground lightgray :background darkblack))

	 ;(company-preview)
	 ;(company-preview-common)
	 ;(company-preview-search)
	 ;(company-scrollbar-bg)
	 ;(company-scrollbar-fg)
	 ;(company-tooltip)
	 ;(company-tooltip-selection)
	 ;(company-tooltip-annotation)
	 ;(company-tooltip-annotation-selection)
	 ;(company-tooltip-common)
	 ;(company-tooltip-mouse)
	 ;(company-tooltip-search)
	 ;(company-template-field)
	 ))

(provide-theme 'nebulae)
