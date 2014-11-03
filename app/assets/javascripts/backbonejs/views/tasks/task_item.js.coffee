class BackboneSample.Views.TaskItem extends Backbone.View

  template: JST['backbonejs/templates/tasks/item']

  tagName: 'tr'

  events: {
    'click .delete': 'deleteTask',
    'click .edit-btn': 'editTask',
    'click .cancel-btn': 'cancelEdit',
    'change .done-check-box': 'changeDone',
    'keydown .edit-title-area-input': 'keyDown'
  }

  render: ->
    $(@el).html(@template(task: @model))
    this

  editTask: ->
    @editing()

  deleteTask: ->
    $.ajax
      url: "/api/tasks/#{@model.get('id')}.json",
      type: 'DELETE'
    .done =>
      this.remove()

  keyDown: (e)->
    # [TODO] ESC(27)が落ちてこない。。

    if e.keyCode == 13
      e.preventDefault()
      $.ajax(
        url: "/api/tasks/#{@model.get('id')}.json",
        type: 'PATCH'
        data: {
          task: {
            title: this.$('.edit-title-area input').val()
          }
      })
      .done =>
        @model.set('title', this.$('.edit-title-area input').val())
        @.render()
      .fail =>
        alert('error')

  changeDone: (e) ->
    e.preventDefault()
    $.ajax(
      url: "/api/tasks/#{@model.get('id')}.json",
      type: 'PATCH'
      data: {
        task: {
          done: (if this.$('.done-check-box').prop('checked') then '1' else '0')
        }
      })
    .done =>
      @model.set('done', this.$('.done-check-box').prop('checked'))
      @.render()
    .fail =>
      alert('error')

  editing: ->
    @$('.static-title-area').hide()
    @$('.edit-title-area').show()
    @$('.edit-btn').hide()
    @$('.cancel-btn').show()
    @$('.edit-title-area input').focus()

  cancelEdit: ->
    @$('.static-title-area').show()
    @$('.edit-title-area').hide()
    @$('.edit-btn').show()
    @$('.cancel-btn').hide()
