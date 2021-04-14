# https://jekyllrb.com/docs/plugins/hooks/
Jekyll::Hooks.register :site, :post_write do
  # code to call after Jekyll:
  # hook: After writing all of the rendered files to disk
  system('echo "user:$USER, pwd:$(pwd)" >> /tmp/jekyll.log')
  system("./_deploy/deploy.sh")
end
