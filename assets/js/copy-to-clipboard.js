document.getElementById('copyButton').addEventListener('click', function() {
  var codeSnippet = document.getElementById('codeSnippet');
  var range = document.createRange();
  range.selectNode(codeSnippet);
  window.getSelection().removeAllRanges();
  window.getSelection().addRange(range);

  try {
    var successful = document.execCommand('copy');
    var message = successful ? 'Copied to clipboard!' : 'Unable to copy.';
    alert(message);
  } catch(err) {
    console.error('Failed to copy:', err);
  }

  window.getSelection().removeAllRanges();
});
