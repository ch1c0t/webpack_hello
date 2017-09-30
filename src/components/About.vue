<template>
<p>{{message}} from single-file vue component.</p>
</template>

<script lang="coffee">
module.exports =
  data: ->
    message: "Hello"
</script>
