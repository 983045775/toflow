function result = eval(output_root)
  [n, ts] = tasks(output_root);
  result = cell(1,n);
  for k = 1:n
    [p, s, a] = template(ts{k,2},ts{k,3},ts{k,4},get_path(ts{k,5}),ts{k,6},ts{k,7});
    result{k} = [ts{k,1} ' psnr,ssim,abs= ' num2str(p) ', ' num2str(s) ', ' num2str(a)];
  end

  result
end