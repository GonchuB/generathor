$(document).ready ->
  currentIndex = 0
  items = $('.container div')
  itemAmt = items.length
  autoSlide = setInterval((->
    currentIndex += 1
    if currentIndex > itemAmt - 1
      currentIndex = 0
    cycleItems()
    return
  ), 3000)

  cycleItems = ->
    item = $('.container div').eq(currentIndex)
    items.hide()
    item.fadeIn 500
    return

  $('.next').click ->
    clearInterval autoSlide
    currentIndex += 1
    if currentIndex > itemAmt - 1
      currentIndex = 0
    cycleItems()
    return
  $('.prev').click ->
    clearInterval autoSlide
    currentIndex -= 1
    if currentIndex < 0
      currentIndex = itemAmt - 1
    cycleItems()
    return
  return
