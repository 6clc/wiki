import json
import subprocess
import os

# cmd = ['bash', '-c', 'source ci/benchmark_training_from_scratch.sh; init']
# stdout=subprocess.check_output(cmd)

with open('ci/scratch.json') as f:
  scratch_dict = json.load(f)
  network_dict = scratch_dict['networks']
  for network in network_dict.keys():
    for mode in network_dict[network].keys():
      path = network_dict[network][mode]['path']
      train_cmd = network_dict[network][mode]['train']
      eval_cmd = network_dict[network][mode]['eval']
      clear_cmd = network_dict[network][mode]['clear']
      cmd = ['bash', '-c', 
             'source ci/benchmark_training_from_scratch.sh; train_from_scratch \"{}\" \"{}\" \"{}\" \"{}\" \"{}\"'.format(network, mode, train_cmd, eval_cmd, clear_cmd)]
      stdout=subprocess.check_output(cmd, executable='/bin/bash')
      print(stdout)

import json
import subprocess
import os

cmd = ['bash', '-c', 'source ci/benchmark_training_from_scratch.sh; init']
stdout=subprocess.check_output(cmd)
# print(stdout)
# os.popen(cmd)
# os.system(cmd)
# subprocess.run(cmd)
# with open('ci/scratch.json') as f:
#   scratch_dict = json.load(f)
#   network_dict = scratch_dict['networks']
#   for network in network_dict.keys():
#     for mode in network_dict[network].keys():
#       path = network_dict[network][mode]['path']
#       train_cmd = network_dict[network][mode]['train']
#       eval_cmd = network_dict[network][mode]['eval']
#       clear_cmd = network_dict[network][mode]['clear']

#       train_eval_cmd = 'pushd ' + path + ' && ' + 'popd'
      # os.popen(train_eval_cmd)
        # train_cmd + ' | tee -a ' + 'results_file' + ' && ' + \
        #                eval_cmd  + ' | tee -a ' + 'results_file' + ' && ' + \
      # print(train_eval_cmd)
