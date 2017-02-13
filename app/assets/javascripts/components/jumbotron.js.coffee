@Jumbotron = React.createClass
  getInitialState: ->
    header: @props.header
    body: @props.body
  getDefaultProps: ->
    header: ''
    body: ''
  render: ->
    React.DOM.div
      className: 'jumbotron'
      React.DOM.h1
        className: ''
        @state.header
      React.DOM.p
        className: 'lead'
        @state.body
