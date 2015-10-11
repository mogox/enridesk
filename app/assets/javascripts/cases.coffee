# console.log "loading"
# $ ->
#   console.log("DOM is ready")
#   $('.add_label_to_case').on('click', ->
#     console.log "Yey"
#     case_id = $('.case_id')[0].value
#     label_id = $('.label_selector')[0].value
#     token = $('#authenticity_token')[0].value
#     console.log "case_id: #{case_id} "
#     console.log "label_id: #{label_id}"
#     $.ajax(
#         url:'/cases/'+case_id ,
#         data: {
#           label_id: label_id,
#           authenticity_token: token
#         },
#         type: 'PUT',
#         success: =>
#           console.log "Hello after success"
#     )
#   )
