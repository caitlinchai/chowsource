$(document).ready ->
  $('.star5').mouseover ->
    $('.star5').attr 'src', '/assets/hover_star.png'
    $('.star4').attr 'src', '/assets/hover_star.png'
    $('.star3').attr 'src', '/assets/hover_star.png'
    $('.star2').attr 'src', '/assets/hover_star.png'
    $('.star1').attr 'src', '/assets/hover_star.png'
    return
  $('.star5').mouseout ->
    $('.star5').attr 'src', '/assets/star.png'
    $('.star4').attr 'src', '/assets/star.png'
    $('.star3').attr 'src', '/assets/star.png'
    $('.star2').attr 'src', '/assets/star.png'
    $('.star1').attr 'src', '/assets/star.png'
    return
  $('.star4').mouseover ->
    $('.star4').attr 'src', '/assets/hover_star.png'
    $('.star3').attr 'src', '/assets/hover_star.png'
    $('.star2').attr 'src', '/assets/hover_star.png'
    $('.star1').attr 'src', '/assets/hover_star.png'
    return
  $('.star4').mouseout ->
    $('.star4').attr 'src', '/assets/star.png'
    $('.star3').attr 'src', '/assets/star.png'
    $('.star2').attr 'src', '/assets/star.png'
    $('.star1').attr 'src', '/assets/star.png'
    return
  $('.star3').mouseover ->
    $('.star3').attr 'src', '/assets/hover_star.png'
    $('.star2').attr 'src', '/assets/hover_star.png'
    $('.star1').attr 'src', '/assets/hover_star.png'
    return
  $('.star3').mouseout ->
    $('.star3').attr 'src', '/assets/star.png'
    $('.star2').attr 'src', '/assets/star.png'
    $('.star1').attr 'src', '/assets/star.png'
    return
  $('.star2').mouseover ->
    $('.star2').attr 'src', '/assets/hover_star.png'
    $('.star1').attr 'src', '/assets/hover_star.png'
    return
  $('.star2').mouseout ->
    $('.star2').attr 'src', '/assets/star.png'
    $('.star1').attr 'src', '/assets/star.png'
    return
  $('.star1').mouseover ->
    $('.star1').attr 'src', '/assets/hover_star.png'
    return
  $('.star1').mouseout ->
    $('.star1').attr 'src', '/assets/star.png'
    return
