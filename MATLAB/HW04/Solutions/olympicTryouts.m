function [passed, numPass] = olympicTryouts(id, runTimes, highJump, discus, longJump)

%     runtimes<=13s; highjump==true|longjump>=6m; discus>=60m;
    mask = runTimes<=13 & (highJump==true|longJump>6) & discus>=60;
    passed = id(mask);
    numPass = length(passed);

end