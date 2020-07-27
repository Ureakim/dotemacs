;;; syntax-almost-off-theme.el --- Emacs theme with a dark background.

;; Copyright (C) 2020 , Ureakim

;; Author: Ureakim
;;
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Created with emacs-theme-generator, https://github.com/mswift42/theme-creator.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;; color charts : https://jonasjacek.github.io/colors/

;;; Code:

(deftheme syntax-almost-off)
(let ((class '((class color) (min-colors 89)))
			(black "Grey7")
			
			(bg  "Grey15")
			(bg-alt  "Grey23")
			
			(dark-grey "Grey39")
			(mid-grey "Grey50")
			(light-grey "Grey62")
			(white "Grey70")
			
      (warning "#d08770"))
	
  (custom-theme-set-faces
   'syntax-almost-off
   `(default ((,class (:background ,bg :foreground ,white))))
	 
	 `(font-lock-comment-face ((,class (:foreground ,dark-grey :slant italic))))
	 `(font-lock-doc-face ((,class (:foreground ,dark-grey :slant italic))))

	 `(font-lock-function-name-face ((,class (:foreground ,light-grey))))
	 `(font-lock-variable-name-face ((,class (:foreground ,light-grey))))
	 `(font-lock-type-face ((,class (:foreground ,light-grey))))
   `(font-lock-constant-face ((,class (:foreground ,light-grey))))
	 
	 `(font-lock-negation-char-face ((,class (:foreground ,mid-grey))))
	 `(font-lock-builtin-face ((,class (:foreground ,mid-grey :bold t))))
   `(font-lock-keyword-face ((,class (:foreground ,mid-grey :bold t))))
   `(font-lock-string-face ((,class (:foreground ,mid-grey))))
	 
   `(font-lock-warning-face ((,class (:foreground ,warning))))
	 
   `(region ((,class (:background ,bg-alt :foreground ,white))))
   `(highlight ((,class (:background ,white :foreground ,black))))
   `(hl-line ((,class (:background  ,black))))
   `(fringe ((,class (:background ,black :foreground ,dark-grey))))
   `(cursor ((,class (:background ,white))))
   `(show-paren-match ((,class (:background ,mid-grey :foreground ,black))))
	 `(show-paren-match-expression ((,class (:inherit show-paren-match-expression))))
   `(isearch ((,class (:inherit highlight))))
	 `(isearch-fail ((,class (:foreground ,warning))))
	 
   `(mode-line ((,class (:bold t :foreground ,light-grey :background ,black))))
   `(mode-line-inactive ((,class (:box (:line-width 1 :color ,black) :foreground ,mid-grey :background nil :weight normal))))
   `(mode-line-buffer-id ((,class (:bold t :foreground ,white :background nil))))
   `(mode-line-highlight ((,class (:foreground ,white :box nil :weight bold))))
   `(mode-line-emphasis ((,class (:box (:line-width 1 :color ,warning)))))
	 
   `(vertical-border ((,class (:foreground ,black))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,white))))
   `(link ((,class (:foreground ,white :underline t))))
	 
   `(org-code ((,class (:foreground ,dark-grey))))
   `(org-hide ((,class (:foreground ,bg))))
   `(org-level-1 ((,class (:bold t :foreground ,white :height 1.1))))
   `(org-level-2 ((,class (:bold t :foreground ,light-grey))))
   `(org-level-3 ((,class (:bold t :foreground ,mid-grey))))
   `(org-level-4 ((,class (:bold t :foreground ,dark-grey))))
   `(org-date ((,class (:underline t :foreground ,white) )))
   `(org-footnote  ((,class (:underline t :foreground ,white))))
   `(org-link ((,class (:underline t :foreground ,white))))
   `(org-special-keyword ((,class (:foreground ,white))))
   `(org-block ((,class (:background ,black))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-todo ((,class (:box (:line-width 1 :color ,white) :foreground ,white :bold t))))
   `(org-done ((,class (:box (:line-width 1 :color ,light-grey) :foreground ,light-grey :bold t))))
   `(org-warning ((,class (:underline t :foreground ,warning))))

	 `(ido-only-match ((,class (:foreground ,warning))))
	 `(ido-first-match ((,class (:foreground ,white :bold t))))
	 `(ido-subdir ((,class (:foreground ,white :bold t))))

	 `(company-preview ((,class (:background ,black :foreground ,white))))
	 `(company-preview-common ((,class (:foreground ,mid-grey))))
	 `(company-preview-search ((,class (:foreground ,light-grey))))
	 `(company-scrollbar-bg ((,class (:background ,black))))
	 `(company-scrollbar-fg ((,class (:background ,light-grey))))
	 `(company-tooltip ((,class (:foreground ,white :background ,black))))
	 `(company-tooltip-selection ((,class (:background ,bg-alt))))
   `(company-tooltip-annotation ((,class (:foreground ,light-grey))))
	 `(company-tooltip-annotation-selection ((,class (:background ,bg-alt))))
	 `(company-tooltip-common ((,class (:foreground ,white :bold t))))
	 `(company-tooltip-mouse ((,class (:background ,bg-alt))))
	 `(company-tooltip-search ((,class (:bold t :foreground ,white))))
	 `(company-template-field ((,class (:inherit region))))

	 `(warning ((,class (:foreground ,warning))))
	 
   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	 ;; `(company-echo-common ((,class (:foreground ,light-grey :background ,bg))))                             ;;
	 ;; `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))  ;;
	 ;; `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))																					  ;;
   ;; `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))																  ;;
   ;; `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))										  ;;
   ;; `(org-agenda-done ((,class (:foreground ,bg4))))																											  ;;
   ;; `(org-scheduled ((,class (:foreground ,type))))																												  ;;
   ;; `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))												  ;;
   ;; `(org-ellipsis ((,class (:foreground ,builtin))))																											  ;;
   ;; `(org-verbatim ((,class (:foreground ,fg4))))																													  ;;
   ;; `(org-document-info-keyword ((,class (:foreground ,func))))																						  ;;
	 ;; `(org-sexp-date ((,class (:foreground ,fg4))))																												  ;;
	 ;; 																																																			  ;;
	 ;; `(ac-completion-face ((,class (:underline t :foreground ,light-grey))))                                 ;;
   ;; `(info-quoted-name ((,class (:foreground ,builtin))))																									  ;;
   ;; `(info-string ((,class (:foreground ,str))))																													  ;;
   ;; `(icompletep-determined ((,class :foreground ,builtin)))																							  ;;
   ;; `(trailing-whitespace ((,class :foreground nil :background ,warning)))																  ;;
   ;; `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))																			  ;;
	 ;; 																																																			  ;;
	 ;; `(term ((,class (:foreground ,fg1 :background ,bg1))))																								  ;;
   ;; `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))																		  ;;
   ;; `(term-color-blue ((,class (:foreground ,func :background ,func))))																		  ;;
   ;; `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))																	  ;;
   ;; `(term-color-green ((,class (:foreground ,type :background ,bg3))))																		  ;;
   ;; `(term-color-yellow ((,class (:foreground ,var :background ,var))))																		  ;;
   ;; `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))													  ;;
   ;; `(term-color-cyan ((,class (:foreground ,str :background ,str))))																			  ;;
   ;; `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))																		  ;;
	 ;; 																																																			  ;;
	 ;; `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))																  ;;
   ;; `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))																  ;;
   ;; `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))															  ;;
   ;; `(web-mode-keyword-face ((,class (:foreground ,keyword))))																						  ;;
   ;; `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))																  ;;
   ;; `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))										  ;;
   ;; `(web-mode-string-face ((,class (:foreground ,str))))																									  ;;
   ;; `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))																			  ;;
   ;; `(web-mode-html-attr-name-face ((,class (:foreground ,func))))																				  ;;
   ;; `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))																		  ;;
   ;; `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))																  ;;
   ;; `(web-mode-html-tag-face ((,class (:foreground ,builtin))))																						  ;;
	 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	 ))

;;;###autoload
(when load-file-name
	(add-to-list 'custom-theme-load-path
							 (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'syntax-almost-off)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; syntax-almost-off-theme.el ends here

