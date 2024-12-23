(use-modules (haunt asset)
             (haunt site)
             (haunt builder blog)
             (haunt builder atom)
             (haunt reader skribe)
	     (haunt publisher))

(site #:title "足迹"
      #:domain "tart-wilderness.surge.sh"
      #:default-metadata
      '((author . "不是大卫，不是戴维，是Deivvvvv")
	(email . "David@192.168.0.1"))
      #:readers (list skribe-reader)
      #:builders (list (blog)
                       (atom-feed)
                       (atom-feeds-by-tag)))
